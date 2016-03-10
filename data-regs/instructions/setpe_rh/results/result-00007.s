  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .read_pf_into_rbx         #  1     0     5      OPC=callq_label      
  movsbw %bl, %r12w               #  2     0x5   5      OPC=movsbw_r16_r8    
  movq $0xfffffffffffffffa, %rax  #  3     0xa   10     OPC=movq_r64_imm64   
  movq %rax, %rcx                 #  4     0x14  3      OPC=movq_r64_r64     
  movzbq %cl, %r11                #  5     0x17  4      OPC=movzbq_r64_r8    
  popcntq %r11, %rax              #  6     0x1b  5      OPC=popcntq_r64_r64  
  negw %r12w                      #  7     0x20  4      OPC=negw_r16         
  adcb %ah, %ah                   #  8     0x24  2      OPC=adcb_rh_rh       
  orl %r11d, %eax                 #  9     0x26  3      OPC=orl_r32_r32      
  retq                            #  10    0x29  1      OPC=retq             
                                                                             
.size target, .-target
