  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  xorl %ebx, %ebx                               #  1     0     2      OPC=xorl_r32_r32            
  vcvtsi2ssl %ebx, %xmm1, %xmm12                #  2     0x2   4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  vmovaps %ymm12, %ymm3                         #  3     0x6   5      OPC=vmovaps_ymm_ymm         
  setbe %bh                                     #  4     0xb   3      OPC=setbe_rh                
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  5     0xe   5      OPC=callq_label             
  xchgl %ebx, %r13d                             #  6     0x13  3      OPC=xchgl_r32_r32           
  retq                                          #  7     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
