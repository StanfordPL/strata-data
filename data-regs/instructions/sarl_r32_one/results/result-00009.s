  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_bx_r12b_r13b  #  1     0     5      OPC=callq_label     
  movq $0x0, %rax                   #  2     0x5   10     OPC=movq_r64_imm64  
  xaddl %ebx, %eax                  #  3     0xf   3      OPC=xaddl_r32_r32   
  movslq %eax, %rax                 #  4     0x12  3      OPC=movslq_r64_r32  
  sarb $0x1, %r12b                  #  5     0x15  3      OPC=sarb_r8_one     
  callq .read_sf_into_rbx           #  6     0x18  5      OPC=callq_label     
  sarq $0x1, %rax                   #  7     0x1d  3      OPC=sarq_r64_one    
  setpo %bh                         #  8     0x20  3      OPC=setpo_rh        
  xchgl %eax, %ebx                  #  9     0x23  1      OPC=xchgl_r32_eax   
  retq                              #  10    0x24  1      OPC=retq            
                                                                              
.size target, .-target
