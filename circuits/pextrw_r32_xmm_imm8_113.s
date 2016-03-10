  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm9             #  1     0     6      OPC=pmovzxwq_xmm_xmm  
  movdqu %xmm9, %xmm3               #  2     0x6   5      OPC=movdqu_xmm_xmm    
  callq .move_128_064_xmm3_r12_r13  #  3     0xb   5      OPC=callq_label       
  movzbl %r12b, %ebx                #  4     0x10  4      OPC=movzbl_r32_r8     
  xchgw %bx, %r13w                  #  5     0x14  4      OPC=xchgw_r16_r16     
  retq                              #  6     0x18  1      OPC=retq              
                                                                                
.size target, .-target
