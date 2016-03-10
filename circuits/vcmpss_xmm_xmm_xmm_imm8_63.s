  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label         
  vzeroall                            #  2     0x5   3      OPC=vzeroall            
  vdivps %ymm9, %ymm11, %ymm5         #  3     0x8   5      OPC=vdivps_ymm_ymm_ymm  
  callq .move_byte_25_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label         
  vpmovsxdq %xmm5, %ymm14             #  5     0x12  5      OPC=vpmovsxdq_ymm_xmm   
  callq .move_064_128_r8_r9_xmm1      #  6     0x17  5      OPC=callq_label         
  cvtsd2ss %xmm14, %xmm1              #  7     0x1c  5      OPC=cvtsd2ss_xmm_xmm    
  retq                                #  8     0x21  1      OPC=retq                
                                                                                    
.size target, .-target
