  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  movmskpd %xmm1, %ebx            #  1     0     4      OPC=movmskpd_r32_xmm   
  shrxq %rbx, %rbx, %r13          #  2     0x4   5      OPC=shrxq_r64_r64_r64  
  decw %bx                        #  3     0x9   3      OPC=decw_r16           
  callq .move_128_064_xmm1_r8_r9  #  4     0xc   5      OPC=callq_label        
  xchgl %r9d, %r13d               #  5     0x11  3      OPC=xchgl_r32_r32      
  xchgw %r13w, %bx                #  6     0x14  4      OPC=xchgw_r16_r16      
  retq                            #  7     0x18  1      OPC=retq               
                                                                               
.size target, .-target
