  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  vcvtsi2ssl %r12d, %xmm2, %xmm1                #  2     0x5   5      OPC=vcvtsi2ssl_xmm_xmm_r32  
  cvtsi2ssl %r10d, %xmm1                        #  3     0xa   5      OPC=cvtsi2ssl_xmm_r32       
  movss %xmm3, %xmm1                            #  4     0xf   4      OPC=movss_xmm_xmm           
  retq                                          #  5     0x13  1      OPC=retq                    
                                                                                                  
.size target, .-target
