  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovshdup %xmm6, %xmm7                        #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vpmovzxbd %xmm4, %ymm14                       #  3     0x9   5      OPC=vpmovzxbd_ymm_xmm      
  vunpckhps %ymm7, %ymm14, %ymm2                #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm  
  movd %xmm2, %ebx                              #  5     0x12  4      OPC=movd_r32_xmm           
  xaddb %bh, %bh                                #  6     0x16  3      OPC=xaddb_rh_rh            
  retq                                          #  7     0x19  1      OPC=retq                   
                                                                                                 
.size target, .-target
