  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_64_128_xmm10_xmm11_xmm3   #  2     0x5   5      OPC=callq_label           
  vcvttsd2sil %xmm2, %ebp               #  3     0xa   4      OPC=vcvttsd2sil_r32_xmm   
  bswap %rbp                            #  4     0xe   3      OPC=bswap_r64             
  cvtsi2ssl %ebp, %xmm10                #  5     0x11  5      OPC=cvtsi2ssl_xmm_r32     
  vmovhlps %xmm2, %xmm3, %xmm2          #  6     0x16  4      OPC=vmovhlps_xmm_xmm_xmm  
  movhlps %xmm11, %xmm10                #  7     0x1a  4      OPC=movhlps_xmm_xmm       
  vbroadcastsd %xmm2, %ymm1             #  8     0x1e  5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  9     0x23  5      OPC=callq_label           
  retq                                  #  10    0x28  1      OPC=retq                  
                                                                                        
.size target, .-target
