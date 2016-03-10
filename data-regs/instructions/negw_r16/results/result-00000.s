  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rdx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_edx_r12w_r13w  #  2     0xa   5      OPC=callq_label     
  xaddw %r13w, %bx                   #  3     0xf   5      OPC=xaddw_r16_r16   
  notw %bx                           #  4     0x14  3      OPC=notw_r16        
  callq .set_szp_for_bx              #  5     0x17  5      OPC=callq_label     
  retq                               #  6     0x1c  1      OPC=retq            
                                                                               
.size target, .-target
