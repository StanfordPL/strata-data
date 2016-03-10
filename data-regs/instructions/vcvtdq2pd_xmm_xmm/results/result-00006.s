  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  vzeroall                                      #  2     0x5   3      OPC=vzeroall                
  cvtsi2sdl %r11d, %xmm15                       #  3     0x8   5      OPC=cvtsi2sdl_xmm_r32       
  punpcklqdq %xmm15, %xmm4                      #  4     0xd   5      OPC=punpcklqdq_xmm_xmm      
  vcvtsi2sdl %r10d, %xmm4, %xmm1                #  5     0x12  5      OPC=vcvtsi2sdl_xmm_xmm_r32  
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
