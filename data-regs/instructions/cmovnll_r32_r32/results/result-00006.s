  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  vmovd %ecx, %xmm1               #  1     0     4      OPC=vmovd_xmm_r32     
  callq .move_128_064_xmm1_r8_r9  #  2     0x4   5      OPC=callq_label       
  setnl %r9b                      #  3     0x9   4      OPC=setnl_r8          
  negb %r9b                       #  4     0xd   3      OPC=negb_r8           
  cmovngel %r8d, %ebx             #  5     0x10  4      OPC=cmovngel_r32_r32  
  retq                            #  6     0x14  1      OPC=retq              
                                                                              
.size target, .-target
