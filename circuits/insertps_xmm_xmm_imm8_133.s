  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vpxor %xmm8, %xmm8, %xmm14                      #  1     0     5      OPC=vpxor_xmm_xmm_xmm     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vmovhlps %xmm14, %xmm14, %xmm10                 #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label           
  cvtsd2ss %xmm10, %xmm1                          #  5     0x14  5      OPC=cvtsd2ss_xmm_xmm      
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
