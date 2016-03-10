  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label       
  vzeroall                          #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r12_r13_xmm1  #  3     0x8   5      OPC=callq_label       
  movlhps %xmm1, %xmm5              #  4     0xd   3      OPC=movlhps_xmm_xmm   
  divsd %xmm8, %xmm1                #  5     0x10  5      OPC=divsd_xmm_xmm     
  unpckhpd %xmm5, %xmm1             #  6     0x15  4      OPC=unpckhpd_xmm_xmm  
  retq                              #  7     0x19  1      OPC=retq              
                                                                                
.size target, .-target
