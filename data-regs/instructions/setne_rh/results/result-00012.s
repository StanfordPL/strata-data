  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  clc                      #  1     0    1      OPC=clc             
  callq .read_cf_into_rbx  #  2     0x1  5      OPC=callq_label     
  clc                      #  3     0x6  1      OPC=clc             
  setnc %ah                #  4     0x7  3      OPC=setnc_rh        
  cmoveq %rbx, %rax        #  5     0xa  4      OPC=cmoveq_r64_r64  
  retq                     #  6     0xe  1      OPC=retq            
                                                                    
.size target, .-target
