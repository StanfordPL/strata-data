  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  vmovd %ecx, %xmm2               #  1     0     4      OPC=vmovd_xmm_r32    
  callq .read_sf_into_rcx         #  2     0x4   5      OPC=callq_label      
  callq .move_128_064_xmm2_r8_r9  #  3     0x9   5      OPC=callq_label      
  xorb %r9b, %cl                  #  4     0xe   3      OPC=xorb_r8_r8       
  cmovbel %r8d, %ebx              #  5     0x11  4      OPC=cmovbel_r32_r32  
  retq                            #  6     0x15  1      OPC=retq             
                                                                             
.size target, .-target
