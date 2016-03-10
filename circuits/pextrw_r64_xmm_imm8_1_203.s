  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  movshdup %xmm1, %xmm6              #  1     0     4      OPC=movshdup_xmm_xmm         
  movupd %xmm6, %xmm14               #  2     0x4   5      OPC=movupd_xmm_xmm           
  vpmovzxwq %xmm14, %xmm11           #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm        
  vpunpckhqdq %xmm1, %xmm11, %xmm10  #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovq %xmm10, %rbx                 #  5     0x12  5      OPC=vmovq_r64_xmm            
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
