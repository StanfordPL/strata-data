  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmovd %ebx, %xmm13                              #  1     0     4      OPC=vmovd_xmm_r32       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  punpcklqdq %xmm11, %xmm13                       #  3     0x9   5      OPC=punpcklqdq_xmm_xmm  
  vmovupd %xmm13, %xmm10                          #  4     0xe   5      OPC=vmovupd_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label         
  retq                                            #  6     0x18  1      OPC=retq                
                                                                                                
.size target, .-target
