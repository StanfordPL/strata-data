  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  callq .set_szp_for_ebx          #  2     0xa   5      OPC=callq_label     
  cmovzw %bx, %dx                 #  3     0xf   4      OPC=cmovzw_r16_r16  
  rolb $0x1, %dh                  #  4     0x13  2      OPC=rolb_rh_one     
  notl %ebx                       #  5     0x15  2      OPC=notl_r32        
  incl %ebx                       #  6     0x17  2      OPC=incl_r32        
  retq                            #  7     0x19  1      OPC=retq            
                                                                            
.size target, .-target
