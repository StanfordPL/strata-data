  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  vmovd %ecx, %xmm2                             #  1     0     4      OPC=vmovd_xmm_r32    
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label      
  adcl %r12d, %r13d                             #  3     0x9   3      OPC=adcl_r32_r32     
  callq .move_032_064_r10d_r11d_rcx             #  4     0xc   5      OPC=callq_label      
  cmovnzl %ecx, %ebx                            #  5     0x11  3      OPC=cmovnzl_r32_r32  
  retq                                          #  6     0x14  1      OPC=retq             
                                                                                           
.size target, .-target
