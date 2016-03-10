  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vpmovzxbq %xmm10, %ymm3                         #  2     0x5   5      OPC=vpmovzxbq_ymm_xmm         
  vpmovzxwq %xmm9, %xmm8                          #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm         
  vrsqrtps %xmm9, %xmm12                          #  4     0xf   5      OPC=vrsqrtps_xmm_xmm          
  vfnmadd231sd %xmm3, %xmm12, %xmm11              #  5     0x14  5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  vunpckhpd %xmm11, %xmm8, %xmm9                  #  6     0x19  5      OPC=vunpckhpd_xmm_xmm_xmm     
  movq %xmm9, %rbx                                #  7     0x1e  5      OPC=movq_r64_xmm              
  retq                                            #  8     0x23  1      OPC=retq                      
                                                                                                      
.size target, .-target
