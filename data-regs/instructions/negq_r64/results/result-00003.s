  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vxorpd %xmm8, %xmm8, %xmm2      #  1     0     5      OPC=vxorpd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x5   5      OPC=callq_label         
  subq %rbx, %r8                  #  3     0xa   3      OPC=subq_r64_r64        
  cmovsl %r9d, %ebx               #  4     0xd   4      OPC=cmovsl_r32_r32      
  cmovneq %r8, %rbx               #  5     0x11  4      OPC=cmovneq_r64_r64     
  retq                            #  6     0x15  1      OPC=retq                
                                                                                
.size target, .-target
