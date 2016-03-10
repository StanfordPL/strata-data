  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovq %xmm1, %xmm0                #  1     0     4      OPC=vmovq_xmm_xmm       
  callq .move_128_064_xmm1_r10_r11  #  2     0x4   5      OPC=callq_label         
  vdivss %xmm1, %xmm0, %xmm13       #  3     0x9   4      OPC=vdivss_xmm_xmm_xmm  
  movmskpd %xmm13, %ebx             #  4     0xd   5      OPC=movmskpd_r32_xmm    
  xaddl %ebx, %r11d                 #  5     0x12  4      OPC=xaddl_r32_r32       
  retq                              #  6     0x16  1      OPC=retq                
                                                                                  
.size target, .-target
