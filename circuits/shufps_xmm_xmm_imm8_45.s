  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  movsldup %xmm2, %xmm13                        #  1     0     5      OPC=movsldup_xmm_xmm       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm4, %xmm13, %xmm9                #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklps %xmm13, %xmm9, %xmm8                #  4     0xe   5      OPC=vunpcklps_xmm_xmm_xmm  
  punpckldq %xmm7, %xmm5                        #  5     0x13  4      OPC=punpckldq_xmm_xmm      
  vmovsd %xmm5, %xmm8, %xmm13                   #  6     0x17  4      OPC=vmovsd_xmm_xmm_xmm     
  movaps %xmm13, %xmm1                          #  7     0x1b  4      OPC=movaps_xmm_xmm         
  retq                                          #  8     0x1f  1      OPC=retq                   
                                                                                                 
.size target, .-target
