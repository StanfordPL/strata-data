  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vpmovzxwq %xmm2, %xmm3                    #  1     0     5      OPC=vpmovzxwq_xmm_xmm        
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label              
  vpor %xmm3, %xmm3, %xmm12                 #  3     0xa   4      OPC=vpor_xmm_xmm_xmm         
  movd %eax, %xmm1                          #  4     0xe   4      OPC=movd_xmm_r32             
  vmovq %xmm12, %xmm8                       #  5     0x12  5      OPC=vmovq_xmm_xmm            
  vpunpckhqdq %ymm12, %ymm8, %ymm3          #  6     0x17  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  pxor %xmm3, %xmm1                         #  7     0x1c  4      OPC=pxor_xmm_xmm             
  retq                                      #  8     0x20  1      OPC=retq                     
                                                                                               
.size target, .-target
