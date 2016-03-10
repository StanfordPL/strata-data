  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm8_xmm9        #  2     0x5   5      OPC=callq_label              
  callq .move_032_064_r8d_r9d_rbx           #  3     0xa   5      OPC=callq_label              
  movdqu %xmm9, %xmm12                      #  4     0xf   5      OPC=movdqu_xmm_xmm           
  vmovq %rbx, %xmm13                        #  5     0x14  5      OPC=vmovq_xmm_r64            
  unpckhpd %xmm12, %xmm2                    #  6     0x19  5      OPC=unpckhpd_xmm_xmm         
  callq .move_128_256_xmm12_xmm13_ymm1      #  7     0x1e  5      OPC=callq_label              
  vunpcklpd %ymm1, %ymm13, %ymm0            #  8     0x23  4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm0, %ymm2, %ymm1           #  9     0x27  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                      #  10    0x2b  1      OPC=retq                     
                                                                                               
.size target, .-target
