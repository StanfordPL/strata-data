  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  xorq %rbx, %rbx                     #  1     0     3      OPC=xorq_r64_r64      
  cmovnel %ebx, %ebx                  #  2     0x3   3      OPC=cmovnel_r32_r32   
  cvtss2sd %xmm1, %xmm1               #  3     0x6   4      OPC=cvtss2sd_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0xa   5      OPC=callq_label       
  xchgb %bl, %r8b                     #  5     0xf   3      OPC=xchgb_r8_r8       
  retq                                #  6     0x12  1      OPC=retq              
                                                                                  
.size target, .-target
