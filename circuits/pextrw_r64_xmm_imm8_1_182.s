  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmulss %xmm1, %xmm1, %xmm11                   #  1     0     4      OPC=vmulss_xmm_xmm_xmm  
  xorl %ebx, %ebx                               #  2     0x4   2      OPC=xorl_r32_r32        
  vmovupd %ymm11, %ymm1                         #  3     0x6   5      OPC=vmovupd_ymm_ymm     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0xb   5      OPC=callq_label         
  xaddw %r13w, %bx                              #  5     0x10  5      OPC=xaddw_r16_r16       
  retq                                          #  6     0x15  1      OPC=retq                
                                                                                              
.size target, .-target
