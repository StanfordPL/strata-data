  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label        
  vzeroall                        #  2     0x5   3      OPC=vzeroall           
  vmovq %r8, %xmm2                #  3     0x8   5      OPC=vmovq_xmm_r64      
  notl %r8d                       #  4     0xd   3      OPC=notl_r32           
  callq .move_064_128_r8_r9_xmm3  #  5     0x10  5      OPC=callq_label        
  vorpd %ymm2, %ymm3, %ymm1       #  6     0x15  4      OPC=vorpd_ymm_ymm_ymm  
  retq                            #  7     0x19  1      OPC=retq               
                                                                               
.size target, .-target
