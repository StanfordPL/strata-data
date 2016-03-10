  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .set_szp_for_bx    #  1     0     5      OPC=callq_label      
  callq .read_sf_into_rcx  #  2     0x5   5      OPC=callq_label      
  movq $0x4, %r8           #  3     0xa   10     OPC=movq_r64_imm64   
  salq %cl, %r8            #  4     0x14  3      OPC=salq_r64_cl      
  popcntq %r8, %rcx        #  5     0x17  5      OPC=popcntq_r64_r64  
  adcw %cx, %bx            #  6     0x1c  3      OPC=adcw_r16_r16     
  retq                     #  7     0x1f  1      OPC=retq             
                                                                      
.size target, .-target
