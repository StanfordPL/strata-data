  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label            
  vzeroall                          #  2     0x5   3      OPC=vzeroall               
  vdivps %xmm2, %xmm4, %xmm2        #  3     0x8   4      OPC=vdivps_xmm_xmm_xmm     
  callq .move_064_128_r12_r13_xmm1  #  4     0xc   5      OPC=callq_label            
  vpmovsxdq %xmm2, %xmm2            #  5     0x11  5      OPC=vpmovsxdq_xmm_xmm      
  vcvtsd2ss %xmm2, %xmm1, %xmm1     #  6     0x16  4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  retq                              #  7     0x1a  1      OPC=retq                   
                                                                                     
.size target, .-target
