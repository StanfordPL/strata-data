  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vdivpd %xmm11, %xmm10, %xmm1                    #  2     0x5   5      OPC=vdivpd_xmm_xmm_xmm       
  movapd %xmm3, %xmm1                             #  3     0xa   4      OPC=movapd_xmm_xmm           
  vfmadd231ss %xmm11, %xmm2, %xmm2                #  4     0xe   5      OPC=vfmadd231ss_xmm_xmm_xmm  
  vpunpckhqdq %ymm1, %ymm2, %ymm1                 #  5     0x13  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                            #  6     0x17  1      OPC=retq                     
                                                                                                     
.size target, .-target
