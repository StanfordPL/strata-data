  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  vmovq %xmm6, %rbx                             #  2     0x5   5      OPC=vmovq_r64_xmm    
  callq .move_032_016_ebx_r12w_r13w             #  3     0xa   5      OPC=callq_label      
  movzwq %r13w, %r13                            #  4     0xf   4      OPC=movzwq_r64_r16   
  xorb %bh, %bl                                 #  5     0x13  2      OPC=xorb_r8_rh       
  cmovncl %r13d, %ebx                           #  6     0x15  4      OPC=cmovncl_r32_r32  
  retq                                          #  7     0x19  1      OPC=retq             
                                                                                           
.size target, .-target
