  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .read_pf_into_rcx         #  1     0     5      OPC=callq_label     
  movq %rcx, %rbx                 #  2     0x5   3      OPC=movq_r64_r64    
  salb $0x1, %bl                  #  3     0x8   2      OPC=salb_r8_one     
  movq $0xffffffffffffffc0, %rax  #  4     0xa   10     OPC=movq_r64_imm64  
  salw $0x1, %cx                  #  5     0x14  3      OPC=salw_r16_one    
  setpo %bh                       #  6     0x17  3      OPC=setpo_rh        
  xchgl %ebx, %eax                #  7     0x1a  1      OPC=xchgl_eax_r32   
  retq                            #  8     0x1b  1      OPC=retq            
                                                                            
.size target, .-target
