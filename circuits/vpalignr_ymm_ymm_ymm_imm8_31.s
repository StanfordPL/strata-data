  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13      #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm13, %xmm13, %xmm1           #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label            
  callq .move_byte_15_of_ymm1_to_r8b        #  4     0xf   5      OPC=callq_label            
  vzeroall                                  #  5     0x14  3      OPC=vzeroall               
  bswap %r9d                                #  6     0x17  3      OPC=bswap_r32              
  callq .move_r9b_to_byte_0_of_ymm1         #  7     0x1a  5      OPC=callq_label            
  callq .move_r8b_to_byte_16_of_ymm1        #  8     0x1f  5      OPC=callq_label            
  retq                                      #  9     0x24  1      OPC=retq                   
                                                                                             
.size target, .-target
