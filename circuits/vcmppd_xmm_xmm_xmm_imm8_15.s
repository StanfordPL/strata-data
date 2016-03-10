  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label        
  orw %r13w, %r10w                              #  2     0x5   4      OPC=orw_r16_r16        
  vzeroall                                      #  3     0x9   3      OPC=vzeroall           
  callq .move_128_064_xmm2_r8_r9                #  4     0xc   5      OPC=callq_label        
  blsmskl %r8d, %r10d                           #  5     0x11  5      OPC=blsmskl_r32_r32    
  movd %r10d, %xmm1                             #  6     0x16  5      OPC=movd_xmm_r32       
  vpmovsxbq %xmm1, %xmm1                        #  7     0x1b  5      OPC=vpmovsxbq_xmm_xmm  
  retq                                          #  8     0x20  1      OPC=retq               
                                                                                             
.size target, .-target
