  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovss %xmm1, %xmm1, %xmm10       #  1     0     4      OPC=vmovss_xmm_xmm_xmm  
  xorpd %xmm1, %xmm10               #  2     0x4   5      OPC=xorpd_xmm_xmm       
  callq .move_128_064_xmm1_r10_r11  #  3     0x9   5      OPC=callq_label         
  cvtsd2sil %xmm10, %ebx            #  4     0xe   5      OPC=cvtsd2sil_r32_xmm   
  xaddl %ebx, %r11d                 #  5     0x13  4      OPC=xaddl_r32_r32       
  retq                              #  6     0x17  1      OPC=retq                
                                                                                  
.size target, .-target
