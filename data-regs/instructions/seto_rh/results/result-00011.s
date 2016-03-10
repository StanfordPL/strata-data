  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label    
  xorl %eax, %eax          #  2     0x5   2      OPC=xorl_r32_r32   
  callq .read_cf_into_rcx  #  3     0x7   5      OPC=callq_label    
  xorw %cx, %bx            #  4     0xc   3      OPC=xorw_r16_r16   
  setpo %bh                #  5     0xf   3      OPC=setpo_rh       
  xchgl %eax, %ebx         #  6     0x12  1      OPC=xchgl_r32_eax  
  retq                     #  7     0x13  1      OPC=retq           
                                                                    
.size target, .-target
