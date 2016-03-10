  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vzeroall                                      #  1     0     3      OPC=vzeroall              
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x3   5      OPC=callq_label           
  decl %r10d                                    #  3     0x8   3      OPC=decl_r32              
  vmovd %r10d, %xmm6                            #  4     0xb   5      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm6, %xmm1                     #  5     0x10  5      OPC=vpbroadcastd_xmm_xmm  
  retq                                          #  6     0x15  1      OPC=retq                  
                                                                                                
.size target, .-target
