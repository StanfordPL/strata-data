  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  movshdup %xmm2, %xmm13                    #  2     0x5   5      OPC=movshdup_xmm_xmm       
  movd %r8d, %xmm8                          #  3     0xa   5      OPC=movd_xmm_r32           
  vpbroadcastd %xmm8, %xmm1                 #  4     0xf   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm1, %xmm13, %xmm1            #  5     0x14  4      OPC=vunpckhps_xmm_xmm_xmm  
  retq                                      #  6     0x18  1      OPC=retq                   
                                                                                             
.size target, .-target
