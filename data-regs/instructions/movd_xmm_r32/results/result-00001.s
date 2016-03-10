  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  xorb %r8b, %r8b                    #  1     0     3      OPC=xorb_r8_r8      
  vmovd %ebx, %xmm3                  #  2     0x3   4      OPC=vmovd_xmm_r32   
  movapd %xmm3, %xmm1                #  3     0x7   4      OPC=movapd_xmm_xmm  
  callq .move_r8b_to_byte_4_of_ymm1  #  4     0xb   5      OPC=callq_label     
  retq                               #  5     0x10  1      OPC=retq            
                                                                               
.size target, .-target
