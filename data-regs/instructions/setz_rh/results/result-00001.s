  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label    
  movsbl %bl, %ecx         #  2     0x5   3      OPC=movsbl_r32_r8  
  movzbl %cl, %r12d        #  3     0x8   4      OPC=movzbl_r32_r8  
  movq %r12, %r13          #  4     0xc   3      OPC=movq_r64_r64   
  shll $0x1, %r13d         #  5     0xf   3      OPC=shll_r32_one   
  setpo %ah                #  6     0x12  3      OPC=setpo_rh       
  retq                     #  7     0x15  1      OPC=retq           
                                                                    
.size target, .-target
