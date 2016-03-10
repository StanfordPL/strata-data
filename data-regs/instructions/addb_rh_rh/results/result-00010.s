  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %rdx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rdx_r12d_r13d  #  2     0xa   5      OPC=callq_label     
  movzbl %bh, %edx                   #  3     0xf   3      OPC=movzbl_r32_rh   
  movw %dx, %r12w                    #  4     0x12  4      OPC=movw_r16_r16    
  callq .move_016_032_r12w_r13w_ecx  #  5     0x16  5      OPC=callq_label     
  addb %cl, %ah                      #  6     0x1b  2      OPC=addb_rh_r8      
  retq                               #  7     0x1d  1      OPC=retq            
                                                                               
.size target, .-target
