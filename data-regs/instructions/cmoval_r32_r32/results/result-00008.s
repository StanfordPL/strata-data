  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  vmovd %ebx, %xmm1                 #  1     0     4      OPC=vmovd_xmm_r32     
  callq .move_128_064_xmm1_r10_r11  #  2     0x4   5      OPC=callq_label       
  cmovnel %ecx, %ebx                #  3     0x9   3      OPC=cmovnel_r32_r32   
  cmovnael %r10d, %ebx              #  4     0xc   4      OPC=cmovnael_r32_r32  
  retq                              #  5     0x10  1      OPC=retq              
                                                                                
.size target, .-target
