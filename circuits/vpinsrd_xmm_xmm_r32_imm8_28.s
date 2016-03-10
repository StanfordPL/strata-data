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
  subb %r12b, %r12b                 #  3     0x8   3      OPC=subb_r8_r8     
  callq .move_064_128_r12_r13_xmm1  #  4     0xb   5      OPC=callq_label    
  vmovd %ebx, %xmm0                 #  5     0x10  4      OPC=vmovd_xmm_r32  
  movss %xmm0, %xmm1                #  6     0x14  4      OPC=movss_xmm_xmm  
  retq                              #  7     0x18  1      OPC=retq           
                                                                             
.size target, .-target
