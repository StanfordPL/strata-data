  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label     
  movswq %bx, %r14         #  2     0x5   4      OPC=movswq_r64_r16  
  adcl %ebx, %ebx          #  3     0x9   2      OPC=adcl_r32_r32    
  shlw $0x1, %bx           #  4     0xb   3      OPC=shlw_r16_one    
  adcl %ebx, %r14d         #  5     0xe   3      OPC=adcl_r32_r32    
  callq .read_zf_into_rbx  #  6     0x11  5      OPC=callq_label     
  retq                     #  7     0x16  1      OPC=retq            
                                                                     
.size target, .-target
