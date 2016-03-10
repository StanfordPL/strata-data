  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  vmovaps %xmm1, %xmm2              #  1     0     4      OPC=vmovaps_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4   5      OPC=callq_label      
  callq .clear_zf                   #  3     0x9   5      OPC=callq_label      
  vmovd %xmm2, %ebx                 #  4     0xe   4      OPC=vmovd_r32_xmm    
  cmovneq %r11, %rbx                #  5     0x12  4      OPC=cmovneq_r64_r64  
  retq                              #  6     0x16  1      OPC=retq             
                                                                               
.size target, .-target
