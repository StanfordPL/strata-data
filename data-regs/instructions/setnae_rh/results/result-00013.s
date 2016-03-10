  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  movb %cl, %ch            #  2     0x5  2      OPC=movb_rh_r8    
  movq %rcx, %rax          #  3     0x7  3      OPC=movq_r64_r64  
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
