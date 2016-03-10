  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  movq $0xfffffffffffffffc, %rbx     #  1     0     10     OPC=movq_r64_imm64      
  callq .move_032_016_ebx_r8w_r9w    #  2     0xa   5      OPC=callq_label         
  callq .move_r8b_to_byte_5_of_ymm1  #  3     0xf   5      OPC=callq_label         
  cvttss2sil %xmm1, %ebx             #  4     0x14  4      OPC=cvttss2sil_r32_xmm  
  retq                               #  5     0x18  1      OPC=retq                
                                                                                   
.size target, .-target
