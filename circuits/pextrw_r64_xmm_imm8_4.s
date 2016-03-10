  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  cvtdq2pd %xmm1, %xmm10             #  1     0     5      OPC=cvtdq2pd_xmm_xmm         
  vpunpckhqdq %xmm10, %xmm1, %xmm13  #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovq %xmm13, %r9                  #  3     0xa   5      OPC=vmovq_r64_xmm            
  movq $0x8, %rbx                    #  4     0xf   10     OPC=movq_r64_imm64           
  xchgw %bx, %r9w                    #  5     0x19  4      OPC=xchgw_r16_r16            
  retq                               #  6     0x1d  1      OPC=retq                     
                                                                                        
.size target, .-target
