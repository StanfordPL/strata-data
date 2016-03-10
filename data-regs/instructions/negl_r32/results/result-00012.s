  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64   
  notl %ebx                #  2     0x3   2      OPC=notl_r32       
  callq .read_zf_into_rcx  #  3     0x5   5      OPC=callq_label    
  subw %ax, %bx            #  4     0xa   3      OPC=subw_r16_r16   
  xaddl %ecx, %ebx         #  5     0xd   3      OPC=xaddl_r32_r32  
  cmc                      #  6     0x10  1      OPC=cmc            
  retq                     #  7     0x11  1      OPC=retq           
                                                                    
.size target, .-target
