  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label      
  vmovd %xmm8, %r15d                 #  2     0x5   5      OPC=vmovd_r32_xmm    
  xorl %r14d, %r14d                  #  3     0xa   3      OPC=xorl_r32_r32     
  callq .read_sf_into_rbx            #  4     0xd   5      OPC=callq_label      
  cmovncw %r15w, %bx                 #  5     0x12  5      OPC=cmovncw_r16_r16  
  retq                               #  6     0x17  1      OPC=retq             
                                                                                
.size target, .-target
