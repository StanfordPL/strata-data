  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  pmovzxbq %xmm1, %xmm9              #  1     0     6      OPC=pmovzxbq_xmm_xmm         
  vpxor %xmm9, %xmm1, %xmm12         #  2     0x6   5      OPC=vpxor_xmm_xmm_xmm        
  vpunpckhqdq %xmm12, %xmm1, %xmm12  #  3     0xb   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movapd %xmm12, %xmm6               #  4     0x10  5      OPC=movapd_xmm_xmm           
  vmovd %xmm6, %ebx                  #  5     0x15  4      OPC=vmovd_r32_xmm            
  retq                               #  6     0x19  1      OPC=retq                     
                                                                                        
.size target, .-target
