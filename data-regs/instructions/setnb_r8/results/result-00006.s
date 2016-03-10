  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setae %ah                       #  1     0     3      OPC=setae_rh        
  movq $0xffffffffffffff80, %rbx  #  2     0x3   10     OPC=movq_r64_imm64  
  adcl %ebx, %ebx                 #  3     0xd   2      OPC=adcl_r32_r32    
  addb %ah, %bh                   #  4     0xf   2      OPC=addb_rh_rh      
  callq .read_cf_into_rcx         #  5     0x11  5      OPC=callq_label     
  movzbq %cl, %rbx                #  6     0x16  4      OPC=movzbq_r64_r8   
  retq                            #  7     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
