  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setng %ch                       #  1     0     3      OPC=setng_rh        
  movq $0x4, %rbx                 #  2     0x3   10     OPC=movq_r64_imm64  
  salb $0x1, %ch                  #  3     0xd   2      OPC=salb_rh_one     
  sete %bh                        #  4     0xf   3      OPC=sete_rh         
  callq .move_016_008_bx_r8b_r9b  #  5     0x12  5      OPC=callq_label     
  movzbl %r9b, %ebx               #  6     0x17  4      OPC=movzbl_r32_r8   
  retq                            #  7     0x1b  1      OPC=retq            
                                                                            
.size target, .-target
