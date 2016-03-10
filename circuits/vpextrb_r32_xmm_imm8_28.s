  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  cvtdq2ps %xmm1, %xmm15              #  1     0     4      OPC=cvtdq2ps_xmm_xmm  
  minss %xmm15, %xmm1                 #  2     0x4   5      OPC=minss_xmm_xmm     
  movq $0xfffffffffffffffd, %rbx      #  3     0x9   10     OPC=movq_r64_imm64    
  notl %ebx                           #  4     0x13  2      OPC=notl_r32          
  callq .move_byte_12_of_ymm1_to_r8b  #  5     0x15  5      OPC=callq_label       
  xchgb %r8b, %bl                     #  6     0x1a  3      OPC=xchgb_r8_r8       
  retq                                #  7     0x1d  1      OPC=retq              
                                                                                  
.size target, .-target
