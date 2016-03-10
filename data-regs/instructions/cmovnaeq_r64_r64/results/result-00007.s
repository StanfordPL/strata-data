  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  vmovd %ecx, %xmm3                 #  1     0     4      OPC=vmovd_xmm_r32    
  callq .move_128_064_xmm3_r12_r13  #  2     0x4   5      OPC=callq_label      
  incw %r13w                        #  3     0x9   4      OPC=incw_r16         
  cmovnaq %rcx, %rbx                #  4     0xd   4      OPC=cmovnaq_r64_r64  
  retq                              #  5     0x11  1      OPC=retq             
                                                                               
.size target, .-target
