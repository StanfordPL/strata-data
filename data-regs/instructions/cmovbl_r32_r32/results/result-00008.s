  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  vmovd %ecx, %xmm9                 #  1     0     4      OPC=vmovd_xmm_r32     
  vmovdqa %ymm9, %ymm14             #  2     0x4   5      OPC=vmovdqa_ymm_ymm   
  vmovaps %xmm14, %xmm3             #  3     0x9   5      OPC=vmovaps_xmm_xmm   
  callq .move_128_064_xmm3_r10_r11  #  4     0xe   5      OPC=callq_label       
  cmovnael %r10d, %ebx              #  5     0x13  4      OPC=cmovnael_r32_r32  
  retq                              #  6     0x17  1      OPC=retq              
                                                                                
.size target, .-target
