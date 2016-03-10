  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vmovapd %xmm1, %xmm2            #  1     0     4      OPC=vmovapd_xmm_xmm    
  xorl %ebx, %ebx                 #  2     0x4   2      OPC=xorl_r32_r32       
  vcvtpd2dq %ymm2, %xmm3          #  3     0x6   4      OPC=vcvtpd2dq_xmm_ymm  
  setbe %bh                       #  4     0xa   3      OPC=setbe_rh           
  callq .move_128_064_xmm3_r8_r9  #  5     0xd   5      OPC=callq_label        
  cmovel %r8d, %ebx               #  6     0x12  4      OPC=cmovel_r32_r32     
  retq                            #  7     0x16  1      OPC=retq               
                                                                               
.size target, .-target
