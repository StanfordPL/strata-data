  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  xorw %r8w, %r8w                     #  1     0     4      OPC=xorw_r16_r16              
  vmulpd %xmm1, %xmm1, %xmm10         #  2     0x4   4      OPC=vmulpd_xmm_xmm_xmm        
  callq .move_128_064_xmm1_r8_r9      #  3     0x8   5      OPC=callq_label               
  vfnmadd231ss %xmm10, %xmm10, %xmm1  #  4     0xd   5      OPC=vfnmadd231ss_xmm_xmm_xmm  
  callq .read_pf_into_rbx             #  5     0x12  5      OPC=callq_label               
  callq .move_r8b_to_byte_13_of_ymm1  #  6     0x17  5      OPC=callq_label               
  bswap %r9d                          #  7     0x1c  3      OPC=bswap_r32                 
  callq .move_byte_10_of_ymm1_to_r8b  #  8     0x1f  5      OPC=callq_label               
  callq .move_008_016_r8b_r9b_bx      #  9     0x24  5      OPC=callq_label               
  retq                                #  10    0x29  1      OPC=retq                      
                                                                                          
.size target, .-target
