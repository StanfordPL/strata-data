  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmulsd %xmm3, %xmm2, %xmm2        #  1     0     4      OPC=vmulsd_xmm_xmm_xmm       
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label              
  vzeroall                          #  3     0x9   3      OPC=vzeroall                 
  orw %r12w, %r13w                  #  4     0xc   4      OPC=orw_r16_r16              
  callq .move_064_128_r12_r13_xmm3  #  5     0x10  5      OPC=callq_label              
  vfmadd132sd %xmm6, %xmm3, %xmm1   #  6     0x15  5      OPC=vfmadd132sd_xmm_xmm_xmm  
  retq                              #  7     0x1a  1      OPC=retq                     
                                                                                       
.size target, .-target
